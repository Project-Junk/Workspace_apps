.class public Lcom/android/settings/Settings$DataUsageSummaryActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 686
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 687
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->T(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->finish()V

    :cond_0
    return-void
.end method
