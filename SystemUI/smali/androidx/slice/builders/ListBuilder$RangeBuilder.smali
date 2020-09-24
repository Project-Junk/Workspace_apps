.class public Landroidx/slice/builders/ListBuilder$RangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mLayoutDirection:I

.field private mMax:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 501
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    .line 507
    iput v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 644
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 652
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    return p0
.end method

.method public getMax()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 604
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    return p0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 636
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 628
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 620
    iget-object p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getValue()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 596
    iget p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValue:I

    return p0
.end method

.method public isValueSet()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 612
    iget-boolean p0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    return p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 576
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 587
    iput p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mLayoutDirection:I

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 524
    iput p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mMax:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 567
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 554
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 545
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValueSet:Z

    .line 536
    iput p1, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mValue:I

    return-object p0
.end method
