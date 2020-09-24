.class final Lcom/android/settings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1694
    iput-object p1, p0, Lcom/android/settings/RadioInfo$22;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1697
    iget-object p1, p0, Lcom/android/settings/RadioInfo$22;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1, p3}, Lcom/android/settings/RadioInfo;->e(Lcom/android/settings/RadioInfo;I)I

    .line 1698
    iget-object p1, p0, Lcom/android/settings/RadioInfo$22;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/RadioInfo;->d()[I

    move-result-object p2

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 1699
    iget-object p1, p0, Lcom/android/settings/RadioInfo$22;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->D(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
