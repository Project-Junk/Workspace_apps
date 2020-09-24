.class final Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;
.super Ljava/lang/Object;
.source "GestureGuideCombinationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemInfo"
.end annotation


# instance fields
.field mImageRes:I

.field mIsChecked:Z

.field mKey:Ljava/lang/String;

.field mNameRes:I

.field mTipsRes:[I


# direct methods
.method constructor <init>(Ljava/lang/String;II[IZ)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    .line 176
    iput p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mNameRes:I

    .line 177
    iput p3, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mImageRes:I

    .line 178
    iput-object p4, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mTipsRes:[I

    .line 179
    iput-boolean p5, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    return-void
.end method
