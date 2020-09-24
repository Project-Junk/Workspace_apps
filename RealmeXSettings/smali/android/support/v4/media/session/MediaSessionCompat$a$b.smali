.class Landroid/support/v4/media/session/MediaSessionCompat$a$b;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/d$a;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V
    .locals 0

    .line 1345
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1460
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    .line 1470
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1471
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const-string v0, "android.support.v4.media.session.action.PLAY_FROM_URI"

    .line 1473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    return-void

    :cond_0
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    .line 1476
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    .line 1478
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    .line 1479
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    .line 1481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    .line 1482
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    .line 1484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1485
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    return-void

    :cond_3
    const-string v0, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    .line 1487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    .line 1488
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    return-void

    :cond_4
    const-string v0, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    .line 1490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    .line 1491
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    .line 1493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    .line 1494
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v0, "android.support.v4.media.session.action.SET_RATING"

    .line 1496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 1497
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    :try_start_0
    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    .line 1351
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$c;

    if-eqz p1, :cond_1

    .line 1354
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4450
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 4664
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Landroid/support/v4/media/session/b;

    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1358
    :cond_0
    invoke-interface {v0}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1357
    :goto_0
    invoke-static {p2, v1, v0}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4680
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->c:Landroid/os/Bundle;

    const-string v0, "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"

    .line 1361
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 1362
    invoke-virtual {p3, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    .line 1364
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    if-eqz p3, :cond_3

    .line 1366
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    return-void

    :cond_3
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    .line 1368
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    if-eqz p3, :cond_4

    .line 1370
    :try_start_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1372
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    .line 1373
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1375
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    return-void

    :cond_5
    const-string p3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    .line 1377
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1378
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$c;

    if-eqz p1, :cond_6

    .line 1379
    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Ljava/util/List;

    if-eqz p3, :cond_6

    const/4 p3, -0x1

    .line 1381
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1382
    iget-object p3, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Ljava/util/List;

    .line 1383
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catch_0
    const-string p1, "MediaSessionCompat"

    const-string p2, "Could not unparcel the extra data."

    .line 1394
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 4

    .line 1400
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 5021
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1b

    if-lt v1, v3, :cond_0

    return v2

    .line 5028
    :cond_0
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$b;

    if-eqz v1, :cond_6

    .line 5029
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 5032
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_6

    .line 5033
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5037
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x4f

    if-eq v1, v3, :cond_3

    const/16 v3, 0x55

    if-eq v1, v3, :cond_3

    .line 5065
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()V

    return v2

    .line 5041
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_4

    .line 5043
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()V

    goto :goto_0

    .line 5044
    :cond_4
    iget-boolean p1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Z

    if-eqz p1, :cond_5

    .line 5045
    iget-object p1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->removeMessages(I)V

    .line 5047
    iput-boolean v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Z

    goto :goto_0

    .line 5055
    :cond_5
    iput-boolean v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->e:Z

    .line 5056
    iget-object p1, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$a;->d:Landroid/support/v4/media/session/MediaSessionCompat$a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5059
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 5056
    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$a$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v2
.end method
