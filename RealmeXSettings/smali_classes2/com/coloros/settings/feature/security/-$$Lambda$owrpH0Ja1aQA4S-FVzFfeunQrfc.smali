.class public final synthetic Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;->INSTANCE:Lcom/coloros/settings/feature/security/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
