.class Lcolor/support/v7/app/a$a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/app/a$a;->b(Lcolor/support/v7/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/app/a$d;

.field final synthetic b:Lcolor/support/v7/app/a;

.field final synthetic c:Lcolor/support/v7/app/a$a;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/a$a;Lcolor/support/v7/app/a$d;Lcolor/support/v7/app/a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/v7/app/a$a$4;->c:Lcolor/support/v7/app/a$a;

    iput-object p2, p0, Lcolor/support/v7/app/a$a$4;->a:Lcolor/support/v7/app/a$d;

    iput-object p3, p0, Lcolor/support/v7/app/a$a$4;->b:Lcolor/support/v7/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcolor/support/v7/app/a$a$4;->c:Lcolor/support/v7/app/a$a;

    iget-object p1, p1, Lcolor/support/v7/app/a$a;->H:[Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcolor/support/v7/app/a$a$4;->c:Lcolor/support/v7/app/a$a;

    iget-object p1, p1, Lcolor/support/v7/app/a$a;->H:[Z

    iget-object p2, p0, Lcolor/support/v7/app/a$a$4;->a:Lcolor/support/v7/app/a$d;

    invoke-virtual {p2, p3}, Lcolor/support/v7/app/a$d;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Lcolor/support/v7/app/a$a$4;->c:Lcolor/support/v7/app/a$a;

    iget-object p1, p1, Lcolor/support/v7/app/a$a;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcolor/support/v7/app/a$a$4;->b:Lcolor/support/v7/app/a;

    iget-object p2, p2, Lcolor/support/v7/app/a;->a:Landroidx/appcompat/app/g;

    iget-object p0, p0, Lcolor/support/v7/app/a$a$4;->a:Lcolor/support/v7/app/a$d;

    invoke-virtual {p0, p3}, Lcolor/support/v7/app/a$d;->isItemChecked(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
