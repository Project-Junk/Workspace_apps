.class public final enum Lcom/github/javiersantos/piracychecker/enums/Display;
.super Ljava/lang/Enum;
.source "Display.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javiersantos/piracychecker/enums/Display;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/enums/Display;",
        "",
        "(Ljava/lang/String;I)V",
        "DIALOG",
        "ACTIVITY",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javiersantos/piracychecker/enums/Display;

.field public static final enum ACTIVITY:Lcom/github/javiersantos/piracychecker/enums/Display;

.field public static final enum DIALOG:Lcom/github/javiersantos/piracychecker/enums/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/javiersantos/piracychecker/enums/Display;

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/Display;

    const/4 v2, 0x0

    const-string v3, "DIALOG"

    invoke-direct {v1, v3, v2}, Lcom/github/javiersantos/piracychecker/enums/Display;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/Display;->DIALOG:Lcom/github/javiersantos/piracychecker/enums/Display;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/Display;

    const/4 v2, 0x1

    const-string v3, "ACTIVITY"

    invoke-direct {v1, v3, v2}, Lcom/github/javiersantos/piracychecker/enums/Display;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/Display;->ACTIVITY:Lcom/github/javiersantos/piracychecker/enums/Display;

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/javiersantos/piracychecker/enums/Display;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/Display;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/enums/Display;
    .locals 1

    const-class v0, Lcom/github/javiersantos/piracychecker/enums/Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javiersantos/piracychecker/enums/Display;

    return-object p0
.end method

.method public static values()[Lcom/github/javiersantos/piracychecker/enums/Display;
    .locals 1

    sget-object v0, Lcom/github/javiersantos/piracychecker/enums/Display;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/Display;

    invoke-virtual {v0}, [Lcom/github/javiersantos/piracychecker/enums/Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javiersantos/piracychecker/enums/Display;

    return-object v0
.end method
