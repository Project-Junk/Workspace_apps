.class final Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;
.super Ljava/lang/Object;
.source "TouchSoundPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/TouchSoundPreferenceController$1;->a(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/android/settings/notification/TouchSoundPreferenceController$1;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/TouchSoundPreferenceController$1;Landroid/content/Context;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->c:Lcom/android/settings/notification/TouchSoundPreferenceController$1;

    iput-object p2, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->a:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->a:Landroid/content/Context;

    const-string v1, "audio"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 47
    iget v1, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;->b:I

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    return-void

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    return-void
.end method
