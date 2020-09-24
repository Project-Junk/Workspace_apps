.class final Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$2;
.super Ljava/lang/Object;
.source "DevicesIdentifyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$2;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 92
    new-instance p1, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$2;->a:Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment$a;-><init>(Lcom/coloros/settings/feature/notification/DevicesIdentifyFragment;B)V

    const/4 p1, 0x1

    return p1
.end method
