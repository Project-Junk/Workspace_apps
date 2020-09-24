.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;Landroid/widget/CheckBox;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->c:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->a:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 299
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->c:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->c(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->b:I

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 301
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->c:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a$1;->c:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->d(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a([I)V

    return-void
.end method
