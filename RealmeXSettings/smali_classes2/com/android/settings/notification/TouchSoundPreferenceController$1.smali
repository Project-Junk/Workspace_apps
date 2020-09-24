.class final Lcom/android/settings/notification/TouchSoundPreferenceController$1;
.super Lcom/android/settings/notification/r;
.source "TouchSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/TouchSoundPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/notification/TouchSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    .line 39
    iput-object p1, p0, Lcom/android/settings/notification/TouchSoundPreferenceController$1;->a:Lcom/android/settings/notification/TouchSoundPreferenceController;

    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/r;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;I)Z
    .locals 1

    .line 42
    new-instance v0, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController$1$1;-><init>(Lcom/android/settings/notification/TouchSoundPreferenceController$1;Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method
