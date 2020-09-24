.class public final synthetic Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;

.field private final synthetic f$1:Landroid/widget/TextView;

.field private final synthetic f$2:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$0:Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$2:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$0:Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$ColorProcessStatsBase$VZP90HHasfVAnIWypcLZb8fempg;->f$2:Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;->lambda$VZP90HHasfVAnIWypcLZb8fempg(Lcom/coloros/settings/feature/appmanager/ColorProcessStatsBase;Landroid/widget/TextView;Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
