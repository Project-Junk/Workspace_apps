.class public Lcom/coloros/settings/ColorSubSettings;
.super Lcom/android/settings/SubSettings;
.source "ColorSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ColorSubSettings$a;
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/ColorSubSettings$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/coloros/settings/ColorSubSettings$a;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 44
    invoke-super {p0}, Lcom/android/settings/SubSettings;->onBackPressed()V

    :cond_1
    return-void
.end method
