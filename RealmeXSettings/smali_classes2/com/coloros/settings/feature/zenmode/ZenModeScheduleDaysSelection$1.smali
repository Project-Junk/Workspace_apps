.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;Landroid/app/Dialog;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;->b:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection$1;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
