.class final Lcom/coloros/settings/feature/security/a$b$4;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/a$b;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/coloros/settings/feature/security/a$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/a$b;Ljava/util/ArrayList;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/coloros/settings/feature/security/a$b$4;->b:Lcom/coloros/settings/feature/security/a$b;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/a$b$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    const/4 p1, 0x0

    move p2, p1

    .line 446
    :goto_0
    iget-object p4, p0, Lcom/coloros/settings/feature/security/a$b$4;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 447
    iget-object p4, p0, Lcom/coloros/settings/feature/security/a$b$4;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    if-ne p2, p3, :cond_0

    move p5, p1

    goto :goto_1

    :cond_0
    const/16 p5, 0x8

    :goto_1
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
