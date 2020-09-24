.class final Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;
.super Landroid/os/Handler;
.source "ColorAirplanePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;B)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;-><init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$500(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V

    :goto_0
    return-void
.end method
