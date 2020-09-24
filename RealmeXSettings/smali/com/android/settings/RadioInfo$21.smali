.class final Lcom/android/settings/RadioInfo$21;
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

    .line 1668
    iput-object p1, p0, Lcom/android/settings/RadioInfo$21;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_2

    .line 1671
    invoke-static {}, Lcom/android/settings/RadioInfo;->c()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-gt p3, p1, :cond_2

    .line 1674
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1675
    array-length p1, p1

    if-gt p1, p3, :cond_0

    goto :goto_0

    .line 1679
    :cond_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1680
    array-length p2, p1

    if-gtz p2, :cond_1

    goto :goto_0

    .line 1683
    :cond_1
    iget-object p2, p0, Lcom/android/settings/RadioInfo$21;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2, p3}, Lcom/android/settings/RadioInfo;->d(Lcom/android/settings/RadioInfo;I)I

    .line 1685
    iget-object p2, p0, Lcom/android/settings/RadioInfo$21;->a:Lcom/android/settings/RadioInfo;

    const/4 p4, 0x0

    aget p1, p1, p4

    invoke-static {p2, p3, p1}, Lcom/android/settings/RadioInfo;->b(Lcom/android/settings/RadioInfo;II)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
