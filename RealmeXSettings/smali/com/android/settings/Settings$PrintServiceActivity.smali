.class public Lcom/android/settings/Settings$PrintServiceActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintServiceActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 777
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$PrintServiceActivity;->setIntent(Landroid/content/Intent;)V

    .line 781
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
