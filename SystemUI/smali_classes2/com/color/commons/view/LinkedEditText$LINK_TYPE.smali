.class public final enum Lcom/color/commons/view/LinkedEditText$LINK_TYPE;
.super Ljava/lang/Enum;
.source "LinkedEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/commons/view/LinkedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LINK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/color/commons/view/LinkedEditText$LINK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

.field public static final enum TYPE_EMAIL:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

.field public static final enum TYPE_PHONE:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

.field public static final enum TYPE_WEB:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    const/4 v1, 0x0

    const-string v2, "TYPE_PHONE"

    invoke-direct {v0, v2, v1}, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_PHONE:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    new-instance v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    const/4 v2, 0x1

    const-string v3, "TYPE_EMAIL"

    invoke-direct {v0, v3, v2}, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_EMAIL:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    new-instance v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    const/4 v3, 0x2

    const-string v4, "TYPE_WEB"

    invoke-direct {v0, v4, v3}, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_WEB:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    sget-object v4, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_PHONE:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_EMAIL:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->TYPE_WEB:Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->$VALUES:[Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/color/commons/view/LinkedEditText$LINK_TYPE;
    .locals 1

    .line 28
    const-class v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/color/commons/view/LinkedEditText$LINK_TYPE;
    .locals 1

    .line 28
    sget-object v0, Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->$VALUES:[Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    invoke-virtual {v0}, [Lcom/color/commons/view/LinkedEditText$LINK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/color/commons/view/LinkedEditText$LINK_TYPE;

    return-object v0
.end method
