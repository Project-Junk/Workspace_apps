.class final Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$3;
.super Landroid/database/ContentObserver;
.source "TopLevelMobileDataPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$3;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 244
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mMobileDataObserver onChange="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopLevelMobileDataPreferenceController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$3;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->updateMobileDataPreferenceState()V

    return-void
.end method
