.class public final enum Lcom/android/internal/telephony/cat/TextColor;
.super Ljava/lang/Enum;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/TextColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BLACK:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum WHITE:Lcom/android/internal/telephony/cat/TextColor;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v1, 0x0

    const-string v2, "BLACK"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v2, 0x1

    const-string v3, "DARK_GRAY"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v3, 0x2

    const-string v4, "DARK_RED"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v4, 0x3

    const-string v5, "DARK_YELLOW"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v5, 0x4

    const-string v6, "DARK_GREEN"

    invoke-direct {v0, v6, v5, v5}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v6, 0x5

    const-string v7, "DARK_CYAN"

    invoke-direct {v0, v7, v6, v6}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v7, 0x6

    const-string v8, "DARK_BLUE"

    invoke-direct {v0, v8, v7, v7}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/4 v8, 0x7

    const-string v9, "DARK_MAGENTA"

    invoke-direct {v0, v9, v8, v8}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v9, 0x8

    const-string v10, "GRAY"

    invoke-direct {v0, v10, v9, v9}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v10, 0x9

    const-string v11, "WHITE"

    invoke-direct {v0, v11, v10, v10}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v11, 0xa

    const-string v12, "BRIGHT_RED"

    invoke-direct {v0, v12, v11, v11}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v12, 0xb

    const-string v13, "BRIGHT_YELLOW"

    invoke-direct {v0, v13, v12, v12}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v13, 0xc

    const-string v14, "BRIGHT_GREEN"

    invoke-direct {v0, v14, v13, v13}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v14, 0xd

    const-string v15, "BRIGHT_CYAN"

    invoke-direct {v0, v15, v14, v14}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const/16 v15, 0xe

    const-string v14, "BRIGHT_BLUE"

    invoke-direct {v0, v14, v15, v15}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v14, "BRIGHT_MAGENTA"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [Lcom/android/internal/telephony/cat/TextColor;

    sget-object v13, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v13, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/TextColor;
    .locals 5

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/cat/TextColor;->values()[Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    iget v4, v3, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextColor;
    .locals 1

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/TextColor;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/TextColor;
    .locals 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/TextColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/TextColor;

    return-object v0
.end method
