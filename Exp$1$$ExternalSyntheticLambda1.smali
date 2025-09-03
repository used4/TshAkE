.class public final synthetic Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/example/myapplication/Exp$1;->lambda$onPostExecute$2(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
