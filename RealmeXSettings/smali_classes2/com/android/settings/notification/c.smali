.class public final Lcom/android/settings/notification/c;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field public a:Landroid/content/Context;

.field b:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/m;->e(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid stream type "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/c;->b:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1

    :goto_0
    return p1
.end method
