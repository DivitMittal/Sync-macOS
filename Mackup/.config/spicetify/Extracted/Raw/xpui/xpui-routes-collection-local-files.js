"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[7379],{15362:(e,t,l)=>{l.d(t,{l:()=>A});l(63961),l(21164),l(38910);var r=l(50959),a=l(10992),i=l(17207),s=l(1949),n=l(56887);const o={"custom-order":s.HI,"title-and-artist-title":{column:n.Q.TITLE_AND_ARTIST,order:n.k.ASC},"title-and-artist-artist":{column:n.Q.TITLE_AND_ARTIST,order:n.k.SECONDARY_ASC},title:{column:n.Q.TITLE,order:n.k.ASC},artist:{column:n.Q.ARTIST,order:n.k.ASC},"added-by":{column:n.Q.ADDED_BY,order:n.k.ASC},"added-at":{column:n.Q.ADDED_AT,order:n.k.ASC},duration:{column:n.Q.DURATION,order:n.k.ASC},album:{column:n.Q.ALBUM,order:n.k.ASC},"album-or-podcast":{column:n.Q.ALBUM_OR_PODCAST,order:n.k.ASC},"album-or-show":{column:n.Q.ALBUM_OR_SHOW,order:n.k.ASC}},c={"title-and-artist-title":n.Q.TITLE_AND_ARTIST,"title-and-artist-artist":n.Q.TITLE_AND_ARTIST,title:n.Q.TITLE,artist:n.Q.ARTIST,"added-by":n.Q.ADDED_BY,"added-at":n.Q.ADDED_AT,duration:n.Q.DURATION,album:n.Q.ALBUM,"album-or-podcast":n.Q.ALBUM_OR_PODCAST,"album-or-show":n.Q.ALBUM_OR_SHOW},u={[n.k.NONE]:n.k.NONE,[n.k.ASC]:n.k.DESC,[n.k.DESC]:n.k.ASC,[n.k.SECONDARY_ASC]:n.k.SECONDARY_DESC,[n.k.SECONDARY_DESC]:n.k.SECONDARY_ASC},d=(n.Q.INDEX,{[n.Q.INDEX]:{key:"custom-order",get value(){return a.ag.get("sort.custom-order")}},[n.Q.TITLE_AND_ARTIST]:{key:"title",get value(){return a.ag.get("sort.title")}},[n.Q.TITLE]:{key:"title",get value(){return a.ag.get("sort.title")}},[n.Q.ARTIST]:{key:"artist",get value(){return a.ag.get("sort.artist")}},[n.Q.ADDED_BY]:{key:"added-by",get value(){return a.ag.get("sort.added-by")}},[n.Q.ADDED_AT]:{key:"added-at",get value(){return a.ag.get("sort.date-added")}},[n.Q.DURATION]:{key:"duration",get value(){return a.ag.get("sort.duration")}},[n.Q.EVENT_DATE]:null,[n.Q.EVENT_INFO]:null,[n.Q.ALBUM]:{key:"album",get value(){return a.ag.get("sort.album")}},[n.Q.ALBUM_OR_PODCAST]:{key:"album-or-podcast",get value(){return a.ag.get("sort.album-or-podcast")}},[n.Q.ALBUM_OR_SHOW]:{key:"album-or-show",get value(){return a.ag.get("sort.album-or-show")}},[n.Q.PLAYS]:null,[n.Q.RELEASE_DATE]:null,[n.Q.ADD]:null,[n.Q.ACTIONS]:null,[n.Q.CONCERT_VENUE]:null,[n.Q.CONCERT_DATE]:null,[n.Q.TITLE_AND_AUTHOR]:{key:"title",get value(){return a.ag.get("sort.title")}},[n.Q.AUTHOR]:null});var g=l(17997),m=l(51769),x=l(11527);function T(e){return!!e}const A=({columns:e,disabled:t,onSort:l})=>{const A=[...e],C=A.indexOf(g.QD.TITLE_AND_ARTIST),D=A.indexOf(g.QD.TITLE_AND_AUTHOR);-1!==C&&A.splice(C,1,g.QD.TITLE,g.QD.ARTIST),-1!==D&&A.splice(D,1);const{sortState:h,setSortState:k}=(0,r.useContext)(s.Gb),p=function(e){return null===e.column?d[g.QD.INDEX]:(0,m.cB)(e.column,e)?d[g.QD.ARTIST]:d[e.column]}(h),S=(0,r.useCallback)((e=>{l?.(),k(((e,t,l)=>e?t!==c[e]||"artist"===e&&[n.k.ASC,n.k.DESC].includes(l)||"title"===e&&[n.k.SECONDARY_ASC,n.k.SECONDARY_DESC].includes(l)?o[e]:{column:c[e],order:u[l]}:s.HI)(e,h.column,h.order))}),[l,k,h.column,h.order]),y=(0,r.useCallback)((()=>null!==h.column),[h.column]),I=A.map((e=>d[e])).filter(T);return(0,x.jsx)(i.A,{options:I,onSelect:S,selected:p,isSelectionChanged:y,sortOrder:h.order,heading:a.ag.get("drop_down.sort_by"),disabled:t,enableViewModeMenu:!0})}},1867:(e,t,l)=>{l.r(t),l.d(t,{default:()=>ne});l(63961),l(21164),l(38910);var r=l(50959),a=l(36162),i=l(83241),s=l(8550),n=l(31805),o=l(28341),c=l(10992),u=l(18953),d=l(34790),g=l(44930),m=l(52759),x=l(30760),T=l(88724),A=l(51769),C=l(99634),D=l(17997),h=l(1949),k=l(68823),p=l(71707),S=l(8601),y=l(18268),I=l(80597),j=l(53641),f=l(79287),b=l(81085),E=l(9705),_=l(95559),Q=l(58045),R=l(31661),N=l(15362);const v="uCHqQ74vvHOnctGg0X0B",O="feuNq1FTxMbdeOTuFgpA";var P=l(11527);const L=r.memo((({tracklistDomRef:e})=>{const{spec:t,logger:l}=(0,b.fU)(_.createDesktopSearchBarEventFactory,{}),a=(0,r.useCallback)((()=>{l.logInteraction(t.filterFieldFactory().keyStrokeFilter())}),[l,t]),i=(0,r.useCallback)((()=>{l.logInteraction(t.filterFieldFactory().hitClearFilter())}),[l,t]),s=(0,Q.v)().filter((e=>h.MI.includes(e)));return(0,P.jsxs)("div",{className:O,children:[(0,P.jsx)(r.Suspense,{fallback:null,children:(0,P.jsx)(R.K,{placeholder:c.ag.get("playlist.search_in_playlist"),clearOnEscapeInElementRef:e,onFilter:a,onClear:i})}),(0,P.jsx)(N.l,{columns:s})]})}));var M=l(71932),U=l(86343),B=l(19686),F=l(3532);const w=r.memo((function({tracklistDomRef:e,togglePlay:t,isPlaying:l,isActive:a,backgroundColor:i,spec:s,logger:n}){const o=(0,F.Q)(),u=(0,r.useMemo)((()=>s.shuffleButtonContainerFactory()),[s]),d=(0,M.j)(),g=(0,r.useCallback)((()=>{const e=(0,U.aK)({isPlaying:l,isActive:a,spec:s.playButtonFactory(),logger:n,uri:y.b});t({loggingParams:e})}),[a,l,n,s,t]);return(0,P.jsx)(E.o,{backgroundColor:i,children:(0,P.jsxs)(E.F,{children:[(0,P.jsx)(T.$,{size:d,onClick:g,isPlaying:l,uri:y.b}),o&&(0,P.jsx)(b.Nh,{spec:u,children:(0,P.jsx)(B.K,{entityName:c.ag.get("local-files"),contextUri:y.b,activationPlacement:"bottomEnd",size:d})}),(0,P.jsx)(b.Nh,{spec:s,children:(0,P.jsx)(L,{tracklistDomRef:e})})]})})}));l(56743),l(98205),l(8627),l(11900),l(20143),l(15706),l(7242);var H=l(5406),Y=l(56887),W=l(43632),z=l(93155),K=l(22215),X=l(85427),q=l(453),V=l(73298),G=l(41646),$=l(63691),J=l(78911),Z=l(52607),ee=l(89541);const te=r.memo((function({uri:e,uid:t,name:l,duration_ms:a,artists:i,album:s,is19PlusOnly:n,isExplicit:o,isPlayable:u,index:d,contextUri:g,imgUrl:m,usePlayContextItem:x,isCompactMode:T=!1}){const{spec:A}=(0,b.fU)(H.r,{data:{position:d,reason:"",uri:e}}),{filter:D}=(0,r.useContext)(C.fo),{isActive:h,isPlaying:k,triggerPlay:p,togglePlay:S}=x({uid:t,uri:e,index:d}),{badges:y,hasBadges:I}=(0,V.r)({isExplicit:o}),j=i?.map((e=>e.name)).join(c.ag.getSeparator())||"",f=(0,Q.v)();return(0,P.jsx)(q.JL,{value:"row",index:d,children:(0,P.jsx)(K._,{menu:(0,P.jsx)(G.N,{uri:e,uid:t,contextUri:g}),children:(0,P.jsx)(ee.c,{uri:e,contextUri:g,isActive:h,index:d,onTriggerPlay:(e,t)=>{p({loggingParams:t})},ariaRowIndex:d+1,isPlayable:u,ageRestricted:n,dragMetadata:{name:l,createdBy:j},spec:A,isCompactMode:T,children:f.map(((r,n)=>{const o=(0,W.Y)(n,r,f);switch(r){case Y.Q.INDEX:return(0,P.jsx)(o,{ariaColIndex:n,children:(0,P.jsx)(J.Du,{uri:e,playAriaLabel:c.ag.get("tracklist.a11y.play",l,j),isPlaying:k,isActive:h,onClick:(e,t)=>{S({loggingParams:t})},spec:A,children:(0,P.jsx)(J.km,{children:d+1})})},n);case Y.Q.TITLE_AND_ARTIST:return(0,P.jsxs)(o,{ariaColIndex:n,children:[(0,P.jsx)(J.lD,{src:m}),(0,P.jsxs)(J.vm,{children:[(0,P.jsx)(J.Wh,{titleText:l,children:(0,P.jsx)($.o,{searchWords:[D],textToHighlight:l})}),I&&(0,P.jsx)(J.g3,{children:y.explicit?(0,P.jsx)(X.N,{}):null}),(0,P.jsx)(J.K9,{children:i&&(0,P.jsx)(Z.o,{nonInteractive:!0,artists:i,filter:D})})]})]},n);case Y.Q.TITLE:return(0,P.jsx)(o,{ariaColIndex:n,children:(0,P.jsxs)(J.nh,{children:[(0,P.jsx)(J.Wh,{titleText:l,children:(0,P.jsx)($.o,{searchWords:[D],textToHighlight:l})}),I&&(0,P.jsx)(J.g3,{children:y.explicit?(0,P.jsx)(X.N,{}):null})]})},n);case Y.Q.ARTIST:return(0,P.jsx)(o,{ariaColIndex:n,children:(0,P.jsx)(J.I4,{children:i&&(0,P.jsx)(Z.o,{nonInteractive:!0,artists:i,filter:D})})},n);case Y.Q.ALBUM:return(0,P.jsx)(o,{ariaColIndex:n,children:s?.name&&(0,P.jsx)(J.BM,{nonInteractive:!0,uri:s?.uri,name:s?.name,children:(0,P.jsx)($.o,{searchWords:[D],textToHighlight:s?.name})})},n);case Y.Q.DURATION:return(0,P.jsxs)(o,{ariaColIndex:n,children:[(0,P.jsx)(z.f,{uri:e}),(0,P.jsx)(J.A$,{duration:a}),(0,P.jsx)(J.Zv,{menu:(0,P.jsx)(G.N,{uri:e,uid:t,contextUri:g}),label:c.ag.get("more.label.track",l,j),spec:A})]},n);default:return null}}))})})})}),((e,t)=>e.uri===t.uri&&e.index===t.index&&e.isCompactMode===t.isCompactMode));var le=l(20704);const re=new Set(h.MI),ae=r.memo((function({uri:e,tracks:t,sortState:l,handleSort:a,usePlayContextItem:i,tracklistDomRef:s,isCompactMode:n=!1}){const o=(0,Q.v)(),u=(0,r.useRef)(null),d=(0,r.useCallback)(((t,l)=>{const r=(0,le.X)(t.album?.images,{desiredSize:40,desiredLabel:"small"});return(0,P.jsx)(te,{index:l,contextUri:e,uri:t.uri,uid:t.uid,isPlayable:t.isPlayable,duration_ms:t.duration.milliseconds,name:t.name,artists:t.artists,album:t.album||void 0,isExplicit:t.isExplicit,is19PlusOnly:t.is19PlusOnly,type:t.type,imgUrl:r?.url||"",usePlayContextItem:i,isCompactMode:n},t.uid)}),[e,i,n]),g=(0,r.useCallback)((e=>({uri:e.uri,uid:e.uid})),[]);return(0,P.jsx)(P.Fragment,{children:(0,P.jsx)(q.JL,{value:"playlist-tracklist",children:(0,P.jsx)(D.Pv,{ariaLabel:c.ag.get("local-files"),hasHeaderRow:!0,columns:o,sortableColumns:re,sortState:l,onSort:a,renderRow:d,resolveItem:g,tracks:t,nrTracks:t.length,limit:100,outerRef:u,outerDomRef:s,isCompactMode:n,columnPersistenceKey:"playlist-tracklist"},e)})})})),ie=[D.QD.INDEX,D.QD.TITLE_AND_ARTIST,D.QD.ALBUM,D.QD.DURATION],se=()=>{const{filter:e}=(0,r.useContext)(C.fo),{sortState:t,setSortState:l}=(0,r.useContext)(h.Gb),E=(0,r.useContext)(I.t),_=(0,j.I)(),Q=(0,S.Y)(s.Fzl),R=(0,r.useRef)(null),{spec:N}=(0,b.fU)(o.G,{data:{uri:y.b}}),O=(0,r.useMemo)((()=>N.actionBarFactory()),[N]),L=(0,r.useMemo)((()=>N.tracklistFactory()),[N]),M=(0,b.$P)(),{isCompactMode:U}=(0,p.mJ)(),B=(({isCompactMode:e=!1})=>{const t=[...ie];return e&&t.splice(t.indexOf(D.QD.TITLE_AND_ARTIST),1,D.QD.TITLE,D.QD.ARTIST),t})({isCompactMode:U}),F=(0,r.useCallback)(((e,r)=>{l((0,A.VK)(e,t)),M.logInteraction(N.tracklistFactory().columnHeaderFactory({identifier:e,position:r||0}).hitSort())}),[l,t,M,N]),{data:H}=(0,a.a)({queryKey:["local-files",t,e],queryFn:()=>E.getTracks((0,A._j)(t),e),staleTime:0,gcTime:3e5,placeholderData:i.Wk,enabled:_}),{isActive:Y,isPlaying:W,togglePlay:z,usePlayContextItem:K}=(0,f.n)({uri:y.b,pages:[{items:(H??[]).map((e=>({...e,provider:null})))}]},{featureIdentifier:"local_files"});return H?e||H.length&&_?(0,P.jsx)(k.a,{columns:B,children:(0,P.jsxs)("div",{role:"presentation",className:v,children:[(0,P.jsxs)(d.gF,{backgroundColor:Q,children:[(0,P.jsxs)(g.W,{children:[(0,P.jsx)(T.$,{size:"medium",onClick:()=>z(),isPlaying:W,uri:y.b}),(0,P.jsx)(m.i,{text:c.ag.get("local-files")})]}),(0,P.jsxs)(d.sP,{children:[(0,P.jsx)(d.xd,{children:c.ag.get("local-files")}),(0,P.jsx)(d.T0,{children:c.ag.get("local-files.description")})]})]}),(0,P.jsx)(w,{togglePlay:z,isPlaying:W,isActive:Y,backgroundColor:Q,tracklistDomRef:R,spec:O,logger:M}),(0,P.jsx)("div",{className:"contentSpacing",children:(0,P.jsx)(b.Nh,{spec:L,children:(0,P.jsx)(ae,{tracks:H,uri:y.b,handleSort:F,sortState:t,usePlayContextItem:K,tracklistDomRef:R,isCompactMode:U})})})]})}):(0,P.jsx)(u.u,{linkTo:"/preferences",linkTitle:c.ag.get("local-files.empty-button"),message:c.ag.get("local-files.empty-description"),title:c.ag.get("local-files.empty-header"),children:(0,P.jsx)(n.Y,{size:"xxlarge","aria-hidden":"true"})}):(0,P.jsx)(x.h,{hasError:!1,errorMessage:c.ag.get("error.request-artist-failure"),loadOffline:!0})},ne=()=>(0,P.jsx)(h.kz,{uri:"spotify:internal:local-files",children:(0,P.jsx)(C.hz,{uri:"spotify:internal:local-files",children:(0,P.jsx)(se,{})})})}}]);
//# sourceMappingURL=xpui-routes-collection-local-files.js.map