.class final Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->a:Lcom/android/settings/datausage/DataUsageList;

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

    .line 476
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    .line 477
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    .line 486
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->b(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$4;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->a(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/net/c;

    .line 1175
    iput-object p2, p1, Lcom/android/settings/datausage/ChartDataUsagePreference;->c:Lcom/android/settingslib/net/c;

    .line 2032
    iget-wide p3, p2, Lcom/android/settingslib/net/d;->c:J

    .line 1176
    iput-wide p3, p1, Lcom/android/settings/datausage/ChartDataUsagePreference;->a:J

    .line 2036
    iget-wide p2, p2, Lcom/android/settingslib/net/d;->d:J

    .line 1177
    iput-wide p2, p1, Lcom/android/settings/datausage/ChartDataUsagePreference;->b:J

    .line 1178
    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 488
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->c(Lcom/android/settings/datausage/DataUsageList;)V

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
