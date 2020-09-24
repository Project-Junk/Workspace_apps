.class public final synthetic Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field private final synthetic f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$1:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput-object p3, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iput p4, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$1:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget v3, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->lambda$updateColorSwitch$5$AppManagerFeature(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;ILandroid/view/View;)V

    return-void
.end method
