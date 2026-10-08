(function(){
  const cfg = window.AKIRA_SUPABASE_CONFIG || {};
  const enabled = !!(window.supabase && cfg.url && cfg.anonKey && !cfg.url.includes("PEGA_AQUI"));
  let client = null;
  if(enabled){
    client = window.supabase.createClient(cfg.url, cfg.anonKey);
  }
  window.WLCloud = {
    enabled,
    async load(){
      if(!client) return null;
      const {data,error}=await client.from("akira_ren_library").select("data,updated_at").eq("id",cfg.documentId||"akira-ren-main-library").maybeSingle();
      if(error) throw error;
      if(!data || !data.data || !data.data.links) return null;
      return data.data;
    },
    async save(payload){
      if(!client) return false;
      const {error}=await client.from("akira_ren_library").upsert({
        id:cfg.documentId||"akira-ren-main-library",
        data:payload,
        updated_at:new Date().toISOString()
      },{onConflict:"id"});
      if(error) throw error;
      return true;
    }
  };
})();
