.class final Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;
.super Ljava/lang/Object;
.source "ZenModeEditAutomaticRules.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;I)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iput p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 327
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->a:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I

    .line 330
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->a:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->g(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I

    .line 334
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    .line 336
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a()V

    return-void
.end method
