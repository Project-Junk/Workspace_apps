.class final Lcom/color/support/widget/ColorCircleProgressBar$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorCircleProgressBar$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/color/support/widget/ColorCircleProgressBar$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/color/support/widget/ColorCircleProgressBar$c;
    .locals 1

    new-instance p0, Lcom/color/support/widget/ColorCircleProgressBar$c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorCircleProgressBar$c;-><init>(Landroid/os/Parcel;Lcom/color/support/widget/ColorCircleProgressBar$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/color/support/widget/ColorCircleProgressBar$c;
    .locals 0

    new-array p0, p1, [Lcom/color/support/widget/ColorCircleProgressBar$c;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar$c$1;->a(Landroid/os/Parcel;)Lcom/color/support/widget/ColorCircleProgressBar$c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorCircleProgressBar$c$1;->a(I)[Lcom/color/support/widget/ColorCircleProgressBar$c;

    move-result-object p0

    return-object p0
.end method
