.class final Lcom/android/settings/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 1610
    iput-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1613
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)I

    move-result p1

    if-eq p1, p3, :cond_1

    if-ltz p3, :cond_1

    .line 1614
    invoke-static {}, Lcom/android/settings/RadioInfo;->b()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    if-gt p3, p1, :cond_1

    .line 1615
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1, p3}, Lcom/android/settings/RadioInfo;->c(Lcom/android/settings/RadioInfo;I)I

    .line 1623
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->v(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 1624
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1625
    iget-object p2, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->v(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "preferred_network_mode"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    .line 1626
    invoke-static {p3}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)I

    move-result p3

    .line 1625
    invoke-static {p2, p1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1628
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Calling setPreferredNetworkType("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->a(Ljava/lang/String;)V

    .line 1629
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1630
    iget-object p2, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->v(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p3}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1632
    :cond_1
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->C(Lcom/android/settings/RadioInfo;)Lcom/coloros/settings/widget/ColorSpinner;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->B(Lcom/android/settings/RadioInfo;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/ColorSpinner;->setSelection(I)V

    .line 1633
    iget-object p1, p0, Lcom/android/settings/RadioInfo$20;->a:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->C(Lcom/android/settings/RadioInfo;)Lcom/coloros/settings/widget/ColorSpinner;

    move-result-object p1

    .line 2064
    iget-object p1, p1, Lcom/coloros/settings/widget/ColorSpinner;->a:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    invoke-virtual {p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismiss()V

    return-void
.end method
