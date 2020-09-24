.class final Lcom/android/settings/applications/manageapplications/ManageApplications$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 449
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p2, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->i:Lcom/android/settings/applications/manageapplications/ManageApplications$a;

    invoke-virtual {p2, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$a;->a(I)Lcom/android/settings/applications/manageapplications/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/a;)Lcom/android/settings/applications/manageapplications/a;

    .line 450
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/settings/applications/manageapplications/a;)V

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Selecting filter "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/a;

    move-result-object p3

    .line 1045
    iget p3, p3, Lcom/android/settings/applications/manageapplications/a;->a:I

    .line 452
    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ManageApplications"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
