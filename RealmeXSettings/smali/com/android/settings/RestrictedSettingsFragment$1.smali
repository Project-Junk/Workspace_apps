.class final Lcom/android/settings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/RestrictedSettingsFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->a:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->a:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/RestrictedSettingsFragment;->a(Lcom/android/settings/RestrictedSettingsFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->a:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/RestrictedSettingsFragment;->b(Lcom/android/settings/RestrictedSettingsFragment;)Z

    .line 86
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment$1;->a:Lcom/android/settings/RestrictedSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/RestrictedSettingsFragment;->c(Lcom/android/settings/RestrictedSettingsFragment;)Z

    :cond_0
    return-void
.end method
