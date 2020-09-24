.class public Lcom/coloros/systemui/notification/view/NotificationDelete;
.super Landroid/widget/LinearLayout;
.source "NotificationDelete.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/coloros/systemui/notification/view/NotificationDelete;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
