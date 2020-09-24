.class final Lcom/coloros/anim/EffectiveAnimationView$a;
.super Landroid/view/View$BaseSavedState;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/anim/EffectiveAnimationView$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:F

.field d:Z

.field e:Ljava/lang/String;

.field f:I

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 884
    new-instance v0, Lcom/coloros/anim/EffectiveAnimationView$a$1;

    invoke-direct {v0}, Lcom/coloros/anim/EffectiveAnimationView$a$1;-><init>()V

    sput-object v0, Lcom/coloros/anim/EffectiveAnimationView$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 909
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    .line 912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 883
    invoke-direct {p0, p1}, Lcom/coloros/anim/EffectiveAnimationView$a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 905
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 920
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 921
    iget-object p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 923
    iget-boolean p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    iget p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget p2, p0, Lcom/coloros/anim/EffectiveAnimationView$a;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
