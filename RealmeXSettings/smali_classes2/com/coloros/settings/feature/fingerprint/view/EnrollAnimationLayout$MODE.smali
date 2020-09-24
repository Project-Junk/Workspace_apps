.class public final enum Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;
.super Ljava/lang/Enum;
.source "EnrollAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

.field public static final enum MODE_COMPLETE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

.field public static final enum MODE_ENROLL:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

.field public static final enum MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

.field public static final enum MODE_NONE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 v1, 0x0

    const-string v2, "MODE_NONE"

    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_NONE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    new-instance v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 v2, 0x1

    const-string v3, "MODE_GUIDE"

    invoke-direct {v0, v3, v2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    new-instance v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 v3, 0x2

    const-string v4, "MODE_ENROLL"

    invoke-direct {v0, v4, v3}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_ENROLL:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    new-instance v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 v4, 0x3

    const-string v5, "MODE_COMPLETE"

    invoke-direct {v0, v5, v4}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_COMPLETE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    sget-object v5, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_NONE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    aput-object v5, v0, v1

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_ENROLL:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_COMPLETE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->$VALUES:[Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;
    .locals 1

    .line 41
    const-class v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;
    .locals 1

    .line 41
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->$VALUES:[Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    return-object v0
.end method
