.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;
.super Ljava/lang/Object;
.source "AodSignatureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealmeGradientColor"
.end annotation


# instance fields
.field private colors:[I

.field private orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    .line 402
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->colors:[I

    return-void
.end method

.method public varargs constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 406
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 407
    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->colors:[I

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 398
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->colors:[I

    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->colors:[I

    return-object p0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->orientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0
.end method
