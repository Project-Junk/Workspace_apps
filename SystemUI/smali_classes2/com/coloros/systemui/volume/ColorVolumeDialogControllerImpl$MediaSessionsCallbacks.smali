.class public final Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/settingslib/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MediaSessionsCallbacks"
.end annotation


# instance fields
.field private mNextStream:I

.field private final mRemoteStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/session/MediaSession$Token;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;


# direct methods
.method protected constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    const/16 p1, 0x64

    .line 1216
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;)Ljava/util/HashMap;
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    return-object p0
.end method

.method private addStream(Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    iget v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": added stream "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from token + "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Volume"

    const-string v0, "ColorVolumeDialogControllerImpl"

    .line 1296
    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mNextStream:I

    :cond_0
    return-void
.end method

.method private findToken(I)Landroid/media/session/MediaSession$Token;
    .locals 3

    .line 1285
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSession$Token;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteRemoved: stream doesn\'t exist, aborting remote removed for token:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Volume"

    const-string v0, "ColorVolumeDialogControllerImpl"

    .line 1263
    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1268
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1269
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    if-ne v0, p1, :cond_1

    .line 1270
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$3200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    .line 1272
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 4

    const-string v0, "onRemoteUpdate"

    .line 1220
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1222
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1223
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v3, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p1

    .line 1224
    iput-boolean v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    .line 1225
    iput v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    .line 1226
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    iput v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    .line 1227
    iget v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 1228
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p3

    iput p3, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    move v0, v2

    .line 1231
    :cond_1
    iget-object p3, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, -0x1

    .line 1232
    iput p3, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    .line 1233
    iput-object p2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 1237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteUpdate: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Volume"

    const-string p3, "ColorVolumeDialogControllerImpl"

    invoke-static {p2, p3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_3
    return-void
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 2

    const-string v0, "onRemoteVolumeChanged"

    .line 1245
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1247
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$3100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result p2

    .line 1248
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$3200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result p1

    if-eqz p2, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result v0

    or-int/2addr p1, v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1253
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1256
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowRequested(I)V

    :cond_2
    return-void
.end method

.method public setStreamVolume(II)V
    .locals 1

    .line 1276
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->findToken(I)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setStreamVolume: No token found for stream: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorVolumeDialogControllerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1281
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$3300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/settingslib/volume/MediaSessions;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/android/settingslib/volume/MediaSessions;->setVolume(Landroid/media/session/MediaSession$Token;I)V

    return-void
.end method
