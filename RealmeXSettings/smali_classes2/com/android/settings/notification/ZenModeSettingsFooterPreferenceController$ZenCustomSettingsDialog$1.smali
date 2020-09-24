.class final Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;
.super Ljava/lang/Object;
.source "ZenModeSettingsFooterPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Landroid/content/Context;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->b:Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 224
    new-instance p1, Lcom/android/settings/core/f;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/notification/ZenModeAutomationSettings;

    .line 226
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 p2, 0x8e

    .line 227
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method
