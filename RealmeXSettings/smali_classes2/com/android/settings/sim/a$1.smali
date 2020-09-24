.class final Lcom/android/settings/sim/a$1;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Lcom/android/settings/sim/a;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/a;Landroid/widget/Spinner;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/sim/a$1;->b:Lcom/android/settings/sim/a;

    iput-object p2, p0, Lcom/android/settings/sim/a$1;->a:Landroid/widget/Spinner;

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

    .line 130
    iget-object p1, p0, Lcom/android/settings/sim/a$1;->a:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/sim/a$1;->b:Lcom/android/settings/sim/a;

    invoke-static {p1, p3}, Lcom/android/settings/sim/a;->a(Lcom/android/settings/sim/a;I)I

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
