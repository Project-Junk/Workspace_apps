.class Lcom/color/support/widget/ColorDatePicker$IncompleteDate;
.super Ljava/lang/Object;
.source "ColorDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncompleteDate"
.end annotation


# instance fields
.field private date:Ljava/util/Calendar;

.field private isIncomplete:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Z
    .locals 0

    .line 804
    iget-boolean p0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    return p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)Ljava/util/Calendar;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    return-object p0
.end method


# virtual methods
.method public after(Ljava/util/Calendar;)Z
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public before(Ljava/util/Calendar;)Z
    .locals 1

    .line 907
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    .line 929
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    .line 932
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    .line 933
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    return-void

    .line 934
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 935
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    .line 936
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    .line 937
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    :cond_1
    return-void
.end method

.method clampDay(I)I
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x0

    .line 903
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    return-void
.end method

.method public get(I)I
    .locals 1

    .line 837
    iget-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 p1, -0x80000000

    return p1

    .line 849
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method getActualMaximum(I)I
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    return p1
.end method

.method getActualMinimum(I)I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    return p1
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v0, :cond_1

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    .line 861
    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    .line 863
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 864
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 866
    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 867
    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 868
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p2, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 869
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clampDay(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    return-void

    .line 871
    :cond_0
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    .line 873
    iget-object p2, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 874
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 876
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 877
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    const/16 v4, 0x7e4

    invoke-virtual {v3, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 878
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 879
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clampDay(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    .line 882
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 883
    iget-object v3, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 885
    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 886
    iget-object v4, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 887
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 888
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clampDay(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    .line 891
    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->clampDay(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    :cond_3
    return-void
.end method

.method public set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 896
    invoke-virtual {p0, v0, p1}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    const/4 p1, 0x2

    .line 897
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    const/4 p1, 0x5

    .line 898
    invoke-virtual {p0, p1, p3}, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->set(II)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    .line 833
    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    return-void
.end method

.method public setWith(Lcom/color/support/widget/ColorDatePicker$IncompleteDate;)V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 820
    iget-boolean p1, p1, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    iput-boolean p1, p0, Lcom/color/support/widget/ColorDatePicker$IncompleteDate;->isIncomplete:Z

    return-void
.end method
