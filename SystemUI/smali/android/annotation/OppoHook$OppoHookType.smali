.class public final enum Landroid/annotation/OppoHook$OppoHookType;
.super Ljava/lang/Enum;
.source "OppoHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/OppoHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OppoHookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/OppoHook$OppoHookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_BASE_CLASS:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_CODE_AND_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_PARAMETER:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum CHANGE_RESOURCE:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;

.field public static final enum NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 41
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v1, 0x0

    const-string v2, "CHANGE_ACCESS"

    invoke-direct {v0, v2, v1}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

    .line 42
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v2, 0x1

    const-string v3, "CHANGE_CODE"

    invoke-direct {v0, v3, v2}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;

    .line 43
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v3, 0x2

    const-string v4, "CHANGE_CODE_AND_ACCESS"

    invoke-direct {v0, v4, v3}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

    .line 44
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v4, 0x3

    const-string v5, "CHANGE_RESOURCE"

    invoke-direct {v0, v5, v4}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_RESOURCE:Landroid/annotation/OppoHook$OppoHookType;

    .line 45
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v5, 0x4

    const-string v6, "CHANGE_BASE_CLASS"

    invoke-direct {v0, v6, v5}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_BASE_CLASS:Landroid/annotation/OppoHook$OppoHookType;

    .line 46
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v6, 0x5

    const-string v7, "CHANGE_PARAMETER"

    invoke-direct {v0, v7, v6}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_PARAMETER:Landroid/annotation/OppoHook$OppoHookType;

    .line 47
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v7, 0x6

    const-string v8, "NEW_FIELD"

    invoke-direct {v0, v8, v7}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;

    .line 48
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/4 v8, 0x7

    const-string v9, "NEW_METHOD"

    invoke-direct {v0, v9, v8}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;

    .line 49
    new-instance v0, Landroid/annotation/OppoHook$OppoHookType;

    const/16 v9, 0x8

    const-string v10, "NEW_CLASS"

    invoke-direct {v0, v10, v9}, Landroid/annotation/OppoHook$OppoHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;

    const/16 v0, 0x9

    .line 40
    new-array v0, v0, [Landroid/annotation/OppoHook$OppoHookType;

    sget-object v10, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v10, v0, v1

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_RESOURCE:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_BASE_CLASS:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->CHANGE_PARAMETER:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;

    aput-object v1, v0, v9

    sput-object v0, Landroid/annotation/OppoHook$OppoHookType;->$VALUES:[Landroid/annotation/OppoHook$OppoHookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/OppoHook$OppoHookType;
    .locals 1

    .line 40
    const-class v0, Landroid/annotation/OppoHook$OppoHookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/annotation/OppoHook$OppoHookType;

    return-object p0
.end method

.method public static values()[Landroid/annotation/OppoHook$OppoHookType;
    .locals 1

    .line 40
    sget-object v0, Landroid/annotation/OppoHook$OppoHookType;->$VALUES:[Landroid/annotation/OppoHook$OppoHookType;

    invoke-virtual {v0}, [Landroid/annotation/OppoHook$OppoHookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/OppoHook$OppoHookType;

    return-object v0
.end method
