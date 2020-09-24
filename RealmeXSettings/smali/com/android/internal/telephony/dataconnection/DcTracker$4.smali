.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/telephony/data/ApnSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field final synthetic val$preferredApnSetId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .locals 0

    .line 3397
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)I
    .locals 1

    .line 3400
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3403
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->val$preferredApnSetId:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3397
    check-cast p1, Landroid/telephony/data/ApnSetting;

    check-cast p2, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->compare(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)I

    move-result p1

    return p1
.end method
