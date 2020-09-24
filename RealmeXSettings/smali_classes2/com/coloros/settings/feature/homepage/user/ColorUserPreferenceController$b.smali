.class final Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;
.super Landroid/content/BroadcastReceiver;
.source "ColorUserPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;B)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$202(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Z)Z

    .line 194
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$b;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$300(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    return-void
.end method
