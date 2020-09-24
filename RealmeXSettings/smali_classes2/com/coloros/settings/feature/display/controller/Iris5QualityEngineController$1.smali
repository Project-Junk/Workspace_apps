.class final Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;
.super Landroid/database/ContentObserver;
.source "Iris5QualityEngineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->access$000(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController$1;->a:Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;->access$100(Lcom/coloros/settings/feature/display/controller/Iris5QualityEngineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
