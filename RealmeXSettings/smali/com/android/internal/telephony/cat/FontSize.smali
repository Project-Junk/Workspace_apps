.class public final enum Lcom/android/internal/telephony/cat/FontSize;
.super Ljava/lang/Enum;
.source "FontSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum LARGE:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum NORMAL:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum SMALL:Lcom/android/internal/telephony/cat/FontSize;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const/4 v2, 0x1

    const-string v3, "LARGE"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const/4 v3, 0x2

    const-string v4, "SMALL"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/android/internal/telephony/cat/FontSize;

    sget-object v4, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/FontSize;
    .locals 5

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/cat/FontSize;->values()[Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 44
    iget v4, v3, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/FontSize;
    .locals 1

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/FontSize;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/FontSize;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/FontSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/FontSize;

    return-object v0
.end method
