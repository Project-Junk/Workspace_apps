.class public Lcom/color/support/widget/help/ColorInternetHelper;
.super Ljava/lang/Object;
.source "ColorInternetHelper.java"


# instance fields
.field private mId:I

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p2}, Lcom/color/support/widget/help/ColorInternetHelper;->setTitle(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/color/support/widget/help/ColorInternetHelper;->setId(I)V

    .line 26
    invoke-virtual {p0, p3}, Lcom/color/support/widget/help/ColorInternetHelper;->setTitleColor(I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleColor()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mTitleColor:I

    return p0
.end method

.method public setId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/color/support/widget/help/ColorInternetHelper;->mTitleColor:I

    return-void
.end method
