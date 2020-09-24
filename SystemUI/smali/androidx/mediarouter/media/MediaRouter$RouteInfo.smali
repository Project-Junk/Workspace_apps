.class public Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation


# static fields
.field static final CHANGE_GENERAL:I = 0x1

.field static final CHANGE_PRESENTATION_DISPLAY:I = 0x4

.field static final CHANGE_VOLUME:I = 0x2

.field public static final CONNECTION_STATE_CONNECTED:I = 0x2

.field public static final CONNECTION_STATE_CONNECTING:I = 0x1

.field public static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field public static final DEVICE_TYPE_BLUETOOTH:I = 0x3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE_SPEAKER:I = 0x2

.field public static final DEVICE_TYPE_TV:I = 0x1

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PRESENTATION_DISPLAY_ID_NONE:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final SYSTEM_MEDIA_ROUTE_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "android"


# instance fields
.field private mCanDisconnect:Z

.field private mConnecting:Z

.field private mConnectionState:I

.field private final mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field final mDescriptorId:Ljava/lang/String;

.field private mDeviceType:I

.field mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPresentationDisplay:Landroid/view/Display;

.field private mPresentationDisplayId:I

.field private final mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

.field private mSettingsIntent:Landroid/content/IntentSender;

.field final mUniqueId:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeHandling:I

.field private mVolumeMax:I


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 814
    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 944
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 945
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    .line 946
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method private static isSystemMediaRouteProvider(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 1305
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getMetadata()Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canDisconnect()Z
    .locals 0

    .line 1348
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    return p0
.end method

.method public getConnectionState()I
    .locals 0

    .line 1038
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    return p0
.end method

.method public getControlFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 1102
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 996
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method getDescriptorId()Ljava/lang/String;
    .locals 0

    .line 1564
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 1277
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    return p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1434
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 0

    .line 1008
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 968
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 982
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPlaybackStream()I
    .locals 0

    .line 1267
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return p0
.end method

.method public getPlaybackType()I
    .locals 0

    .line 1258
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return p0
.end method

.method public getPresentationDisplay()Landroid/view/Display;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1412
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1413
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 1414
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 1416
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getPresentationDisplayId()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1425
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    return p0
.end method

.method public getProvider()Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 0

    .line 953
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    return-object p0
.end method

.method public getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1570
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getProviderInstance()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsIntent()Landroid/content/IntentSender;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1443
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    return-object p0
.end method

.method public getVolume()I
    .locals 0

    .line 1327
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    return p0
.end method

.method public getVolumeHandling()I
    .locals 0

    .line 1317
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return p0
.end method

.method public getVolumeMax()I
    .locals 0

    .line 1337
    iget p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return p0
.end method

.method public isBluetooth()Z
    .locals 1

    .line 1073
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1074
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getBluetoothRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnecting()Z
    .locals 0

    .line 1027
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnecting:Z

    return p0
.end method

.method public isDefault()Z
    .locals 1

    .line 1061
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1062
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultOrBluetooth()Z
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1285
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSystemMediaRouteProvider(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 1291
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 1292
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isDeviceSpeaker()Z
    .locals 4

    .line 1083
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "default_audio_route_name"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1085
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1017
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    return p0
.end method

.method isSelectable()Z
    .locals 1

    .line 1301
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 1049
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1050
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 0
    .param p1    # Landroidx/mediarouter/media/MediaRouteSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1117
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1118
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->matchesControlFilters(Ljava/util/List;)Z

    move-result p0

    return p0

    .line 1115
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method maybeUpdateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 1

    .line 1479
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    if-eq v0, p1, :cond_0

    .line 1480
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestSetVolume(I)V
    .locals 3

    .line 1361
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1362
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->requestSetVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 1

    .line 1375
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    if-eqz p1, :cond_0

    .line 1377
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->requestUpdateVolume(Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    :cond_0
    return-void
.end method

.method public select()V
    .locals 1

    .line 1450
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1451
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public sendControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1245
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1247
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->sendControlRequest(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void

    .line 1243
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intent must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsControlAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1181
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1183
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1185
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 1186
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 1179
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1176
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "category must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsControlCategory(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1143
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1145
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1147
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 1141
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "category must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsControlRequest(Landroid/content/Intent;)Z
    .locals 7
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1211
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 1213
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1216
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    const/4 v5, 0x1

    const-string v6, "MediaRouter"

    invoke-virtual {v4, v0, p1, v5, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 1209
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intent must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 1473
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDescriptor(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 3

    .line 1487
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 1489
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1493
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1494
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    .line 1497
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    or-int/lit8 v0, v0, 0x1

    .line 1501
    :cond_2
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1502
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    or-int/lit8 v0, v0, 0x1

    .line 1505
    :cond_3
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1506
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnecting:Z

    or-int/lit8 v0, v0, 0x1

    .line 1509
    :cond_4
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1510
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    or-int/lit8 v0, v0, 0x1

    .line 1513
    :cond_5
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1514
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1515
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v0, 0x1

    .line 1518
    :cond_6
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1519
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackType:I

    or-int/lit8 v0, v0, 0x1

    .line 1522
    :cond_7
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1523
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    or-int/lit8 v0, v0, 0x1

    .line 1526
    :cond_8
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 1527
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    or-int/lit8 v0, v0, 0x1

    .line 1530
    :cond_9
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 1531
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    or-int/lit8 v0, v0, 0x3

    .line 1534
    :cond_a
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 1535
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    or-int/lit8 v0, v0, 0x3

    .line 1538
    :cond_b
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1539
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    or-int/lit8 v0, v0, 0x3

    .line 1542
    :cond_c
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 1543
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    const/4 v1, 0x0

    .line 1544
    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    or-int/lit8 v0, v0, 0x5

    .line 1547
    :cond_d
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1548
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    or-int/lit8 v0, v0, 0x1

    .line 1551
    :cond_e
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1552
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    or-int/lit8 v0, v0, 0x1

    .line 1555
    :cond_f
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v2

    if-eq v1, v2, :cond_10

    .line 1556
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    or-int/lit8 v0, v0, 0x5

    :cond_10
    return v0
.end method