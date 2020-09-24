.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderProcessor"
.end annotation


# instance fields
.field private final mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private mApply:Z

.field private mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

.field private final mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private final mId:I

.field private mParentData:Ljava/lang/Object;

.field private final mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mParentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    .line 265
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 266
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 267
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    .line 268
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method

.method private applyToView(ZLandroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 308
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;->apply(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static forTextView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    .locals 7

    .line 258
    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$300()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$400()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    return-object v6
.end method


# virtual methods
.method public apply(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public apply(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 297
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 302
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 303
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    return-void
.end method

.method public compareToHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContractedNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object p1

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    return-void
.end method

.method public init()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    return-void
.end method
