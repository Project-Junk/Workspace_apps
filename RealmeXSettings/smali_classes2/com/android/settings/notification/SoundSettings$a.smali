.class public final Lcom/android/settings/notification/SoundSettings$a;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/SoundSettings;

.field private b:Lcom/android/sdk/a;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$a;->a:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$a;->b:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$a;->a:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$a;->a:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->b:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/sdk/a;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$a;->b:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/android/sdk/a;->h()V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$a;->b:Lcom/android/sdk/a;

    .line 232
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings$a;->b:Lcom/android/sdk/a;

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings$a;->a:Lcom/android/settings/notification/SoundSettings;

    iget-object p1, p1, Lcom/android/settings/notification/SoundSettings;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings$a;->a:Lcom/android/settings/notification/SoundSettings;

    iget-object p1, p1, Lcom/android/settings/notification/SoundSettings;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$a;->b:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/android/sdk/a;->h()V

    :cond_0
    return-void
.end method
