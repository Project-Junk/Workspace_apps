.class public final synthetic Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;

    invoke-direct {v0}, Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;-><init>()V

    sput-object v0, Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;->INSTANCE:Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->lambda$gSl2h3BPIm_6o2JxTu7GJb_EkT0(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
