.class public final synthetic Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcolor/support/v7/widget/SearchView$OnCloseListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;

    invoke-direct {v0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;->INSTANCE:Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    invoke-static {}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->lambda$showSearchFragment$3()Z

    move-result v0

    return v0
.end method
