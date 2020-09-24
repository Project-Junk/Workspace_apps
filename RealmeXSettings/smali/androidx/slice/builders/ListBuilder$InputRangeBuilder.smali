.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInputAction:Landroid/app/PendingIntent;

.field private mLayoutDirection:I

.field private mMax:I

.field private mMin:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mThumb:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitle:Ljava/lang/CharSequence;

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    const/16 v1, 0x64

    .line 666
    iput v1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    .line 667
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    .line 668
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    .line 676
    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputAction()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 892
    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return v0
.end method

.method public getMax()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 812
    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 804
    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumb()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 820
    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return v0
.end method

.method public isValueSet()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 828
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 784
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 742
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setInputAction(Landroidx/remotecallback/RemoteCallback;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroidx/remotecallback/RemoteCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 751
    invoke-virtual {p1}, Landroidx/remotecallback/RemoteCallback;->toPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 795
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 702
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return-object p0
.end method

.method public setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 693
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 775
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 733
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setThumb(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 760
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 724
    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 714
    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    .line 715
    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return-object p0
.end method
