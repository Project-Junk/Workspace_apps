.class final Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$1;
.super Ljava/lang/Object;
.source "TopLevelMobileDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->showMobileDataSafeWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "TopLevelMobileDataPreferenceController"

    const-string v0, "onDismiss"

    .line 171
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->updateMobileDataPreferenceState()V

    return-void
.end method
