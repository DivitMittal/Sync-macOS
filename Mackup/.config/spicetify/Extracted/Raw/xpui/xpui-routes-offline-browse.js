"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[1997],{52350:(e,a,i)=>{i.r(a),i.d(a,{default:()=>Y});i(38910);var n=i(82187),t=i.n(n),r=i(10992),s=i(37444),l=i(88339),u=i(29933),c=i(83352),o=i(55165),d=i(92718),g=i(95611),m=i(11527);function x(e,a){switch(e.type){case d.p.ALBUM:return(0,m.jsx)(s.r,{uri:e.uri,name:e.name,images:e.images,sharingInfo:null,artists:e.artists,index:a},e.uri);case d.p.ARTIST:return(0,m.jsx)(l.I,{uri:e.uri,name:e.name,images:e.images,index:a},e.uri);case d.p.SHOW:return(0,m.jsx)(o._,{uri:e.uri,name:e.name,images:e.images,publisher:e.publisher,sharingInfo:null,mediaType:g.E.UNKNOWN,index:a},e.uri);case d.p.AUDIOBOOK:return(0,m.jsx)(u.c,{uri:e.uri,name:e.name,images:e.images,authorName:e.authorName,index:a},e.uri);case d.p.PLAYLIST:return(0,m.jsx)(c.Z,{uri:e.uri,name:e.name,images:e.images,description:"",authorName:e.creatorName,index:a},e.uri);default:return null}}var f=i(21432),h=i(50959),p=i(49857),j=i(9849),y=i(73995),b=i(87063),w=i(65341),v=i(18268),S=i(15763),I=i(80597),N=i(53641),k=i(79287),L=i(93696),P=i(35290),A=i(76959);const C=function({uri:e,name:a,images:i,index:n}){const t=(0,S.u)(),s=(0,h.useRef)(null),l=(0,h.useRef)(!0),u=(0,h.useContext)(I.t),{isPlaying:c}=(0,L.cR)(v.b),{togglePlay:o}=(0,k.n)({uri:v.b,pages:[{items:s.current?.map((e=>({...e,provider:null})))||[]}]},{featureIdentifier:"local_files"});(0,h.useEffect)((()=>(l.current=!0,()=>{l.current=!1})),[]);const d=(0,N.I)(),g=(0,p.y1)((async(e,a)=>{if(!s.current){const e=await u.getTracks();s.current=e}l&&o({loggingParams:a},{uri:v.b,pages:[{items:s.current?.map((e=>({...e,provider:null})))||[]}]})}),w.s_,{leading:!0,trailing:!1});return t.canFetchAllTracks&&d?(0,m.jsx)(j.Z,{index:n,delegatePlayback:!0,delegateLogging:!0,isPlaying:c,onPlay:g,headerText:a,featureIdentifier:"local_files",uri:e,renderCardImage:()=>(0,m.jsx)(y.x,{images:i,FallbackComponent:P.S}),renderSubHeaderContent:()=>(0,m.jsx)(A.i,{children:r.ag.get("local-files.description")})}):null},T=({index:e})=>{const a=(0,b.gB)();return(0,m.jsx)(h.Suspense,{fallback:null,children:(0,m.jsx)(C,{index:e,name:a.name,uri:a.uri,images:a.images})})};var _=i(90829),B=i(97018);const O="ctcxxigybw6qGQde916g",R="QGlY4v4eRdOcBHgHljcF",E="LFYYI0yKpFvSeNhBWRw4",F=()=>(0,m.jsxs)("div",{className:R,children:[(0,m.jsx)(_.D,{size:"xxlarge",className:E}),(0,m.jsx)(B.x,{as:"h1",variant:"titleLarge",semanticColor:"textBase",dir:"auto",children:r.ag.get("web-player.offline.empty-state.title")}),(0,m.jsx)(B.x,{as:"h2",variant:"bodyMedium",semanticColor:"textSubdued",dir:"auto",children:r.ag.get("web-player.offline.empty-state.subtitle")})]});var H=i(453),U=i(87600);const Y=function(){const{hasError:e,items:a}=function(){const e=(0,U.c)(),[a,i]=(0,h.useState)(!0),[n,t]=(0,h.useState)(!1),[r,s]=(0,h.useState)([]);return(0,h.useEffect)((()=>{(async()=>{try{const a=await e.getDownloads();s(a)}catch(e){t(!0)}finally{i(!1)}})()}),[e]),{isLoading:a,hasError:n,items:r}}(),i=(0,N.I)();return e?null:(0,m.jsx)("div",{className:t()(O,"contentSpacing"),children:a.length>0||i?(0,m.jsxs)(H.JL,{value:"headered-grid",children:[(0,m.jsx)(f.P,{title:r.ag.get("music_downloads"),total:a.length,seeAllUri:"/collection/music-downloads",alwaysShowSeeAll:!0,children:a.map(((e,a)=>(0,m.jsx)(H.JL,{value:"card",index:a,children:x(e,a)},e.uri)))}),i&&(0,m.jsx)(f.P,{title:r.ag.get("local-files"),total:1,showAll:!0,children:(0,m.jsx)(T,{index:0})})]}):(0,m.jsx)(F,{})})}}}]);
//# sourceMappingURL=xpui-routes-offline-browse.js.map