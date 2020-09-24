.class final Landroidx/media/MediaBrowserServiceCompat$g;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat;

.field private final b:Landroidx/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->a:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$d;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->a:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$d;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$g;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$g;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string p0, "MBServiceCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Service version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Client version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string v2, "data_custom_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_result_receiver"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v2, v1, v0, v3}, Landroidx/media/MediaBrowserServiceCompat$d;->b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/a/b;Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string v2, "data_search_query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_result_receiver"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v2, v1, v0, v3}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/a/b;Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat$d;->b(Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "data_root_hints"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p0}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    const-string p0, "data_package_name"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "data_calling_pid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p0, "data_calling_uid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Landroidx/media/MediaBrowserServiceCompat$e;Ljava/lang/String;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_result_receiver"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Landroid/support/v4/a/b;Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_callback_token"

    invoke-static {v0, v2}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Landroid/os/IBinder;Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string v2, "data_media_item_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_callback_token"

    invoke-static {v0, v3}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v2, v0, v1, v3}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Landroidx/media/MediaBrowserServiceCompat$e;)V

    goto :goto_0

    :pswitch_8
    const-string v1, "data_root_hints"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$g;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    const-string p0, "data_package_name"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "data_calling_pid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p0, "data_calling_uid"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v7, p0}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroid/os/Messenger;)V

    invoke-virtual/range {v2 .. v7}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$e;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data_calling_pid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
