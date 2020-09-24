.class final Lcom/android/settings/datausage/DataUsageList$2;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/datausage/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 164
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$2;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public final a(Lcom/android/settings/datausage/b;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->a:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
