.class public final synthetic Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/weather/CityAddActivity;

.field private final synthetic f$1:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$0:Lcom/coloros/settings/feature/weather/CityAddActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$1:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    iput p3, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$2:I

    iput p4, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$0:Lcom/coloros/settings/feature/weather/CityAddActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$1:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    iget v2, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$2:I

    iget v3, p0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/coloros/settings/feature/weather/CityAddActivity;->lambda$WEPVKCz7wSBmVPQIz5eYWsqDLhQ(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;IILandroid/content/DialogInterface;I)V

    return-void
.end method
