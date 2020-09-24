.class final Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;
.super Landroid/database/ContentObserver;
.source "Iris5VideoDisplayEnhancementController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;Landroid/os/Handler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/controller/Iris5VideoDisplayEnhancementController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
