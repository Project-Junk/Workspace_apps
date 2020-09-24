.class final Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;Ljava/util/Map$Entry;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    return-void
.end method
